// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
interface I_MedicalCertificate {
    enum SymptomLevel { HEALTH, LOW, MEDIUM, HIGH }
    function addCertificate(string calldata certificate, address patient) external; 
    //parameter: certificate is a string that contains the certificate data, patient is the address of the patient
    //Add the Certificate NFT with specified text(certificate) to patient's address
    function getCertificate(uint256 id) external view returns(string memory certificate); 
    //parameter:certificateId(probabily got from listCertificatesIdOfAddress), return the text of Certificate NFT 
    function listCertificatesIdOfAddress(address patient) external view returns(uint256[] memory certificateIds);
    //parameter: patient's address, return the list of Certificate NFTs id owned by the patient
}