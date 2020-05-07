class Aradah < ApplicationRecord
  belongs_to :user

  before_save do
    self.product_total   = [wells, from_thrawen_tank].compact.sum 
    self.qnet_total   = [qnet_alqsmh, qnet_althrawen, qnet_althrawen_alatawlah, qnet_bneedwan1, qnet_bneedwan2, qnet_bedah, qnet_mashoqah, mrawah].compact.sum
    self.bnenet_total   = [bnenet_blkhzmr, bnenet_bnehasan].compact.sum 
    self.mnet_total   = [mnet_alhalah, mnet_alkhlb, mnet_dos, mnet_alkahla1, mnet_alkahla2, mnet_sehan, mnet_blhkm, mnet_aljawfaa].compact.sum 
    self.bnet_total   = [bnet_almosa, bnet_qrnthbe].compact.sum 
    self.network_total   = [qnet_total, bnenet_total, mnet_total, bnet_total].compact.sum 
    self.qshep_total   = [qshep_nkhal, qshep_alqsmh, qshep_althrawen, qshep_bneodwan, qshep_mashoqah].compact.sum 
    self.bneshep_total   = [bneshep_blkhzmr, bneshep_bnehasan].compact.sum 
    self.mshep_total   = [mshep_alhalah, mshep_dos].compact.sum 
    self.mnahel_total   = [qshep_total, bneshep_total, bneshep_total, bshep_almosa].compact.sum 
    self.distripution_total   = [network_total, mnahel_total].compact.sum
    self.date = created_at.to_date
  end

  def tahliah_total
    [
      FormAltahliahToNaqal,
      from_thrawen_tank,
    ].compact.sum
  end

end
