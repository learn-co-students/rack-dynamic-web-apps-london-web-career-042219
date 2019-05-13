class Application

  def call(env)
    resp1 = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp1.write "#{num_1}\n#{num_2}\n#{num_3}\n"

    if num_1 == num_2 && num_2 == num_3
      resp1.write "You Win"
    else
      resp1.write "You Lose"
    end
    resp1.finish
  end

end
