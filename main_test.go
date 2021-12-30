package main

import "testing"

func TestHello(t *testing.T) {
	expected := "Hello World!"

	actual := hello()

	if expected != actual {
		t.Fatalf("expected: %s, actual: %s\n", expected, actual)
	}
}
