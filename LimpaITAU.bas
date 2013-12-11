rem
rem Função Numero: remove caracteres não numéricos para converter uma string em um número
rem

function Numero( Origem as String ) as String
  
  Ind = 1
  Numero = ""
  while Ind <= len( Origem )
     char = Mid( Origem, Ind, 1 )
     if char <> "," and char <> "'" then
'        if char = "." then
'           char = ","
'        end if
        Numero = Numero + char
     end if
     Ind = Ind + 1
  wend
  
End function

Sub LimpaITAU

rem O que faz a rotina: Limpa um extrato enviado pelo ITAU em formato XLSX
rem * Remove as linhas iniciais até que se encontre uma linha com texto
rem * Removendo as colunas B e C
rem * Remove as linhas que iniciem com o texto "SAL" ou "SDO"
rem * Para cada linha com "-" na coluna E, atribuir o valor negativo para a coluna D.
rem * Remover a coluna E

rem TODO: Incluir uma linha de totalização para conferir o saldo final

Dim Ind as Integer
Dim oSheet
Dim oDocument as Object
Dim oFrame as Object
Dim str as string

  oDocument = thisComponent
  osheet = oDocument.Sheets(0)
  
  rem remove as colunas iniciais até que encontre uma linha com valor
  if osheet.getCellByPosition( 0 , 0 ).Formula = "" then
     oSheet.Columns.RemoveByIndex( 0, 1 )
  end if

  rem remove as linhas em branco até a data
  while osheet.getCellByPosition( 0 , 0 ).Formula <> "Data"
     oSheet.Rows.RemoveByIndex( 0, 1 )
  wend
  
  rem remove as colunas em branco depois da data
  while oSheet.getCellByPosition( 1, 0 ).Formula = ""
     oSheet.Columns.RemoveByIndex( 1, 1 )
  wend
  
  Ind = 2
  cell= osheet.getCellByPosition(0,Ind)
  while cell.Formula <> "" 
    cell = osheet.getCellByPosition(1,Ind)
    if Mid( Cell.String, 1, 3 ) = "SAL" or Mid( Cell.String, 5, 3 ) = "SAL" or Mid( Cell.String, 1, 3 ) = "SDO" then
       oSheet.Rows.RemoveByIndex( Ind, 1 )
    else
       cell = osheet.getCellByPosition(2,Ind)
       num = Numero( cell.Formula )
       cell.Value = Val( num )
       Ind = Ind + 1
    end if

    cell = oSheet.getCellByPosition(1,Ind)
  wend
  oSheet.Columns.RemoveByIndex( 4, 3 )
  
End Sub

