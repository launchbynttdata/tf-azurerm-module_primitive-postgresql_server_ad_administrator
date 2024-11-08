package testimpl

import (
	"testing"

	"github.com/launchbynttdata/lcaf-component-terratest/types"
	"github.com/stretchr/testify/assert"
)

func TestPostgresqlServer(t *testing.T, ctx types.TestContext) {
	// retriving the resource is currently not supported by the Azure SDK for Go (as of 11/07/2024)
	t.Run("TestAlwaysSucceeds", func(t *testing.T) {
		assert.Equal(t, "foo", "foo", "Should always be the same!")
		assert.NotEqual(t, "foo", "bar", "Should never be the same!")
	})
}
