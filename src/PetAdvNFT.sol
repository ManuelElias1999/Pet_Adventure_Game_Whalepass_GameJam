// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract PetAdvNFT is ERC721URIStorage, Ownable {
    address public petAdvTokenAddress; // Dirección del contrato PetAdvToken
    uint256 public tokenCost; // Costo en PetAdv tokens para mintear un NFT
    mapping(address => bool) public authorizedAgents; // Lista de agentes autorizados
    uint256 private currentTokenId; // ID del próximo NFT a mintear

    // Eventos
    event NFTMinted(address indexed to, uint256 tokenId, string tokenURI);
    event AgentAuthorized(address indexed agent);
    event AgentRevoked(address indexed agent);

    constructor(address _petAdvTokenAddress, uint256 _tokenCost) ERC721("PetAdvNFT", "PETNFT") Ownable(msg.sender){
        petAdvTokenAddress = _petAdvTokenAddress;
        tokenCost = _tokenCost;
    }

    // Función para autorizar agentes que puedan mintear NFTs
    function authorizeAgent(address agent) external onlyOwner {
        authorizedAgents[agent] = true;
        emit AgentAuthorized(agent);
    }

    // Función para revocar la autorización de un agente
    function revokeAgent(address agent) external onlyOwner {
        authorizedAgents[agent] = false;
        emit AgentRevoked(agent);
    }

    // Función para que un agente mintee un NFT
    function mintNFT(address to, string memory tokenURI) external {
        require(authorizedAgents[msg.sender], "Not an authorized agent");

        currentTokenId++;
        _mint(to, currentTokenId);
        _setTokenURI(currentTokenId, tokenURI);

        emit NFTMinted(to, currentTokenId, tokenURI);
    }

    // Función para canjear tokens PetAdv por un NFT
    function redeemForNFT(string memory tokenURI) external {
        require(tokenCost > 0, "Token cost must be set");

        // Transferir los tokens PetAdv del usuario al contrato
        IERC20(petAdvTokenAddress).transferFrom(msg.sender, address(this), tokenCost);

        // Mintear el NFT
        currentTokenId++;
        _mint(msg.sender, currentTokenId);
        _setTokenURI(currentTokenId, tokenURI);

        emit NFTMinted(msg.sender, currentTokenId, tokenURI);
    }

    // Función para ajustar el costo en tokens PetAdv
    function setTokenCost(uint256 newCost) external onlyOwner {
        require(newCost > 0, "Token cost must be greater than 0");
        tokenCost = newCost;
    }
}