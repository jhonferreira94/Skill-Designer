# Heurísticas de Usabilidade de Nielsen (10)

Princípios para avaliar e evitar problemas de usabilidade. Use como checklist
de revisão de qualquer fluxo ou tela.

## As 10 heurísticas

1. **Visibilidade do status do sistema**
   - O sistema informa o que está acontecendo (loading, progresso, feedback de ação).
   - Gluestack: `Spinner`, `Progress`, `Toast`, estados `isFocused`/`isDisabled`.

2. **Correspondência sistema ↔ mundo real**
   - Linguagem e conceitos do usuário, ordem lógica e natural; evite jargão técnico.

3. **Controle e liberdade do usuário**
   - "Saídas de emergência": cancelar, desfazer, voltar. Nada de becos sem saída.

4. **Consistência e padrões**
   - Mesma ação = mesma aparência/rótulo. Siga convenções de plataforma e o design system.

5. **Prevenção de erros**
   - Evite o erro antes que aconteça: validação, confirmação em ações destrutivas, defaults seguros.

6. **Reconhecer em vez de lembrar**
   - Mostre opções e informações no contexto; reduza memória exigida do usuário.

7. **Flexibilidade e eficiência**
   - Atalhos e aceleradores para experientes, sem atrapalhar iniciantes.

8. **Estética e design minimalista**
   - Mostre só o relevante. Cada elemento extra compete por atenção.

9. **Ajudar a reconhecer, diagnosticar e recuperar de erros**
   - Mensagens claras (em linguagem simples), indicam o problema e sugerem solução.
   - Gluestack: `FormControlError` + `aria-live`/`role="alert"`.

10. **Ajuda e documentação**
    - Quando necessário, ajuda fácil de buscar, focada na tarefa, com passos concretos.

## Como aplicar nesta skill
- Faça uma **revisão heurística**: percorra cada fluxo e marque violações por heurística.
- Classifique a severidade: cosmético → menor → maior → crítico.
- Proponha correção objetiva para cada violação encontrada.

## Mini-checklist de revisão
- [ ] Há feedback para cada ação (status visível)?
- [ ] Dá para desfazer/cancelar/voltar?
- [ ] Padrões e rótulos consistentes?
- [ ] Erros são prevenidos e bem explicados?
- [ ] Interface minimalista, sem ruído?
