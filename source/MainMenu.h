#ifndef __MainMenu.h_
#define __MainMenu.h_

class MainMenu
{
private:

public:
	//Constructor
	MainMenu();
	
	//Destructor
	~MainMenu();

	void StartGame();
	
	void OpenOptions();

    // initialise the menu
    void Init();

    // Update the menu
    void Update(float deltaTime = 0.0f, float alphaMul = 1.0f);

    // Render the menu
    void Render();

};
#endif