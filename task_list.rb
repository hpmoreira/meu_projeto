def menu
  puts "Escolha uma opção no menu: \n"
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Sair'
  puts
  print 'Opção escolhida: '
end

puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
puts menu
opcao = gets.to_i
tarefa = ""

while (opcao != 3) do
  if opcao == 1
    print 'Digite sua tarefa: '
    tarefa = gets.chomp
    puts
    puts 'Tarefa cadastrada: ' + tarefa
    puts
    opcao = menu
    opcao = gets.to_i
    elsif opcao == 2
    puts
    puts tarefa
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

