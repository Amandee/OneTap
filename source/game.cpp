g#include "IwGx.h"
#include "IwHashString.h"

#include "game.h"
#include "input.h"
#include "audio.h"
#include "pauseMenu.h"
#include "resources.h"

Game::~Game()
{
}

void Game::newGame()
{
    // Reset score
    currentRoundScore = 0;

    // Reset gem position
    gemSprite->m_X = (float)IwGxGetScreenWidth() / 2;
    gemSprite->m_Y = (float)IwGxGetScreenHeight() / 1.2;
}


void Game::Update(float deltaTime, float alphaMul)
{
    if (!m_IsActive)
        return;

    // Update base scene
    Scene::Update(deltaTime, alphaMul);

    // Detect screen tap
    if (m_IsInputActive && m_Manager->GetCurrent() == this && !g_pInput->m_Touched && g_pInput->m_PrevTouched)
    {
        g_pInput->Reset();
        if (pauseSprite->HitTest(g_pInput->m_X, g_pInput->m_Y))
        {
            // Enter pause menu
            pauseGame();
        }
        else
        {
			// Reset gem position
			gemSprite->m_X = (float)g_pInput->m_X;
			
            // Move image to touched position
            m_Tweener.Tween(10.0f,
                            FLOAT, &gemSprite->m_X, (float)g_pInput->m_X,
							FLOAT, &gemSprite->m_Y, (float)IwGxGetScreenHeight() * 0 ,
                            EASING, Ease::linear,
                            END);

            // Increase score
            addToRoundScore(10);

            // Play a sound effect
            g_pAudio->PlaySound("audio/gem_destroyed.wav");
        }
    }
}



void Game::Init()
{
    Scene::Init();

    currentRoundScore = 0;

    // Initialise UI
    initUI();

    // Create a gem
    gemSprite = new CSprite();
    gemSprite->m_X = (float)IwGxGetScreenWidth();
    gemSprite->m_Y = (float)IwGxGetScreenHeight();
    gemSprite->SetAtlas(g_pResources->getGemAtlas());
    gemSprite->m_W = (float)gemSprite->GetAtlas()->GetFrameWidth();
    gemSprite->m_H = (float)gemSprite->GetAtlas()->GetFrameHeight();
    gemSprite->m_AnchorX = 0.5;
    gemSprite->SetAnimDuration(2);
    AddChild(gemSprite);

}





