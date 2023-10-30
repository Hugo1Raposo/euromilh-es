num1=1
iest=1
numero=6  
estrela=3    

loop(){
    echo "Números para o Euromilhões!"
        while [ $num1 -ne $numero ]; do
            echo "O número $num1 é: $(( $RANDOM % 50 + 1))"
            ((num1=num1+1))
        done

        while [ $iest -ne $estrela ]; do
            echo "A estrela $iest é: $(( $RANDOM % 12 + 1))"
            ((iest=iest+1))
        done
} 

loop

pergunta(){
while true; do
    echo "Deseja voltar a jogar? (s/n)"
    read resposta
        if [ "$resposta" = "s" ] || [ "$resposta" = "S" ]; then 
                num1=1
                iest=1
                loop
        elif [ "$resposta" = "n" ] || [ "$resposta" = "N" ]; then 
            echo "Obrigado por jogar!"
            exit
        else
           echo "Resposta nao aceite tem de inserir 's' ou 'n'" 
           pergunta
        fi
done
}

pergunta