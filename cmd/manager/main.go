package main

import (
	"log"

	"github.com/spf13/cobra"
)

var rootCmd = &cobra.Command{
	Use:   "manager",
	Short: "manager service is responsible for storing, updating and tracking of all products stored in the fridge",
}

func init() {
	// Initialise the root command
	rootCmd.AddCommand(clientCmd, serverCmd)
	// Initialise the server CLI arguments
	serverCmd.Flags().StringVarP(&serverCfgPath, "config", "c", "", "-c, --config=/path/to/config.json")
	// Initialise the client related commands
	clientCmd.AddCommand(addProductCmd, getProductCmd, updateProductCmd, removeProductCmd)
}

func main() {
	if err := rootCmd.Execute(); err != nil {
		log.Fatal(err)
	}
}
