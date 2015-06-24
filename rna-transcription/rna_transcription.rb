class Complement

  @d_to_r = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
  def self.of_dna(dna)
    raise ArgumentError if dna =~ /[^GCAT]/
    dna.gsub(/[GCAT]/, @d_to_r)
  end
  def self.of_rna(rna)
    raise ArgumentError if rna =~ /[^CGAU]/
    rna.gsub(/[CGAU]/, @d_to_r.invert)
  end
end
