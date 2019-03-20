#include <SDL.h>
#include <SDL_ttf.h>
#include <SDL_image.h>
#include <SDL_mixer.h>
#include <SDL_net.h>

int main()
{
    SDL_Init(0);
    TTF_Init();
    IMG_Init(0);
    Mix_Init(0);
    SDLNet_Init();
    return 0;
}
