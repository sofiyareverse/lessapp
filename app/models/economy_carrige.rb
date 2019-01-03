class EconomyCarrige  < Carrige
  validates :up_sits,
            :down_sits,
            :side_up_sits,
            :side_down_sits,
            presence: true
end
