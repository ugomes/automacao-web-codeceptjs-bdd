const { I } = inject();
// Add in your custom step files



Given('que estou na tela de Login', () => {
  // From "features\basic.feature" {"line":7,"column":5}
  I.amOnPage('/') 
  I.click('Login')
  
});


 
When('preencho o campo de e-mail com {string}', (email) => {
  I.fillField('#user',email)
});

When('preencho o campo de senha {string}', (password) => {
  I.fillField('#password',password)
});

When('clico no botão de Login', () => {
  
  I.click('#btnLogin')
 
});

Then('o login é realizado com sucesso', () => {
  I.see('Login realizado') 
});

Then('a mensagem E-mail inválido  aparece', () => {
  I.see('E-mail inválido') 
});

Then('a mensagem Senha inválida  aparece', () => {
  I.see('Senha inválida')
});
