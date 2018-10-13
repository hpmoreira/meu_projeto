def menu
  puts "Escolha uma opção no menu: \n"
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Buscar'
  puts '[4] Sair'
  puts
  print 'Opção escolhida: '
end

puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
puts menu
opcao = gets.to_i
tarefas = []

while opcao != 4 do
  if opcao == 1
    print "\nDigite sua tarefa:" 
    tarefas << gets.chomp
    puts
    puts 'Tarefa cadastrada: ' + tarefas[-1]
    puts
    opcao = menu
    opcao = gets.to_i
  elsif opcao == 2
    puts 
    puts "Tarefas cadastradas: \n"
    tarefas.each_with_index do | lista, index |
      puts "##{index+1} - #{lista}"
  end
    puts
    opcao = menu
    opcao = gets.to_i
  elsif opcao == 3
    puts
    puts "A tarefa precisa estar cadastrada para ser encontrada"
    puts 'Digite o que deseja pesquisar: ' 
    busca = gets.chomp 
    resultado_pesquisa = [] 
    tarefas.map {|resultado| 
      if busca == resultado 
        resultado_pesquisa << resultado
      end }
    puts
    puts "O resultado é: #{resultado_pesquisa}"
    puts
    opcao = menu
    opcao = gets.to_i
  else
    puts
    puts 'Opção inválida'
    puts
    opcao = menu
    opcao = gets.to_i
  end
end

