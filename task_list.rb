opcao = ""
while opcao != 3 do
puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
puts '[1] Inserir uma tarefa'
puts '[2] Ver todas as tarefas'
puts '[3] Sair'
puts
print 'Opção escolhida: '

opcao = gets.to_i
tarefa = "" 


  if opcao == 1
    print 'Digite sua tarefa: '
    tarefa = gets.chomp()
    puts
    puts 'Tarefa cadastrada: ' + tarefa
    puts
  elsif opcao == 2
    puts
    puts tarefa
    puts
  else
    puts
    puts 'Opção inválida'
    puts
  end
end