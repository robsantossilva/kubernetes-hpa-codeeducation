package main

import "testing"

func TestGreeting(t *testing.T) {
	result := greeting("Code.education Rocks!")

	if result != "<b>Code.education Rocks!</b>" {
		t.Errorf("Texto inválida. Resultado esperado: %v, resultado obtido: %v", "<b>Code.education Rocks!</b>", result)
	}
}
