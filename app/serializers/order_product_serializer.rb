class OrderProductSerializer < ProductSerializer
  def include_user?
    true
  end
end
