pragma solidity ^0.5.11;
pragma experimental ABIEncoderV2;

import "../tokens/ERC1155/ERC1155Meta.sol";
import "../tokens/ERC1155/ERC1155MintBurn.sol";
import "../tokens/ERC1155/ERC1155Metadata.sol";


contract ERC1155MetaMintBurnMock is ERC1155Meta, ERC1155MintBurn, ERC1155Metadata {

  constructor() public { }

  // ---- Minting functions

  /**
   * @dev Mint _value of tokens of a given id
   * @param _to The address to mint tokens to.
   * @param _id token id to mint
   * @param _value The amount to be minted
   * @param _data Data to be passed if receiver is contract
   */
  function mintMock(address _to, uint256 _id, uint256 _value, bytes memory _data)
    public
  {
    super._mint(_to, _id, _value, _data);
  }

  /**
   * @dev Mint tokens for each ids in _ids
   * @param _to The address to mint tokens to.
   * @param _ids Array of ids to mint
   * @param _values Array of amount of tokens to mint per id
   * @param _data Data to be passed if receiver is contract
   */
  function batchMintMock(address _to, uint256[] memory _ids, uint256[] memory _values, bytes memory _data)
    public
  {
    super._batchMint(_to, _ids, _values, _data);
  }

  // ---- Burning functions

  /**
   * @dev burn _value of tokens of a given token id
   * @param _from The address to burn tokens from.
   * @param _id token id to burn
   * @param _value The amount to be burned
   */
  function burnMock(address _from, uint256 _id, uint256 _value)
    public
  { 
    super._burn(_from, _id, _value);
  }

  /**
   * @dev burn _value of tokens of a given token id
   * @param _from The address to burn tokens from.
   * @param _ids Array of token ids to burn
   * @param _values Array of the amount to be burned
   */
  function batchBurnMock(address _from, uint256[] memory _ids, uint256[] memory _values)
    public
  {
    super._batchBurn(_from, _ids, _values);
  }

  /***********************************|
  |       Unsupported Functions       |
  |__________________________________*/

  function () external {
    revert("ERC1155MetaMintBurnMock: INVALID_METHOD");
  }
}