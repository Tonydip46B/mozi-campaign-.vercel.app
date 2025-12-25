# mozi-campaign-.vercel.app
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover">
    <title>Mozi Wash | Viral Offer</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <style>
        body { font-family: -apple-system, BlinkMacSystemFont, "SF Pro Text", "Segoe UI", Roboto, Helvetica, Arial, sans-serif; }
        .scrim-gradient { background: linear-gradient(to bottom, rgba(0,0,0,0) 0%, rgba(0,0,0,0.4) 60%, rgba(0,0,0,0.95) 100%); }
        .slide-up-enter { transform: translateY(100%); }
        .slide-up-enter-active { transform: translateY(0); transition: transform 0.5s cubic-bezier(0.16, 1, 0.3, 1); }
        .pulse-dot { box-shadow: 0 0 0 0 rgba(220, 38, 38, 0.7); animation: pulse-red 2s infinite; }
        @keyframes pulse-red {
            0% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(220, 38, 38, 0.7); }
            70% { transform: scale(1); box-shadow: 0 0 0 10px rgba(220, 38, 38, 0); }
            100% { transform: scale(0.95); box-shadow: 0 0 0 0 rgba(220, 38, 38, 0); }
        }
    </style>
</head>
<body class="bg-black text-white h-screen w-screen overflow-hidden relative" x-data="{ 
    visitors: 1420, 
    showPopup: false,
    popupText: 'Someone in New York just bought 2 bottles',
    init() {
        // Fake live visitor count
        setInterval(() => { this.visitors += Math.floor(Math.random() * 5) - 2; }, 3000);
        
        // Fake Sales Popup Loop
        const locations = ['Virginia', 'New York', 'California', 'Texas', 'London'];
        setInterval(() => {
            this.showPopup = true;
            this.popupText = `Someone in ${locations[Math.floor(Math.random() * locations.length)]} just bought ${Math.floor(Math.random() * 3) + 1} bottles`;
            setTimeout(() => { this.showPopup = false; }, 4000);
        }, 12000);
    }
}">

    <div class="absolute inset-0 z-0">
        <img src="background.png" alt="Viral content" class="w-full h-full object-cover">
    </div>

    <div class="absolute inset-0 z-10 scrim-gradient pointer-events-none"></div>

    <div class="absolute top-0 left-0 right-0 z-30 pt-12 px-6 flex justify-between items-center">
        <div class="bg-black/60 backdrop-blur-md border border-white/10 rounded-full px-4 py-2 flex items-center space-x-2">
            <span class="w-2 h-2 bg-red-500 rounded-full pulse-dot"></span>
            <span class="text-xs font-bold text-white tracking-wide">
                <span x-text="visitors"></span> people viewing
            </span>
        </div>
    </div>

    <div x-show="showPopup" x-transition.duration.500ms class="absolute top-24 left-4 right-4 z-40">
        <div class="bg-white/95 backdrop-blur-xl rounded-xl p-3 shadow-2xl flex items-center space-x-3 border border-white/20">
            <div class="bg-green-100 p-2 rounded-full">
                <svg class="w-5 h-5 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path></svg>
            </div>
            <p class="text-sm text-gray-800 font-semibold" x-text="popupText"></p>
        </div>
    </div>

    <div class="absolute inset-0 z-20 flex flex-col justify-end pb-10 px-6 safe-area-pb">
        
        <div class="mb-3">
            <span class="bg-yellow-400 text-black px-3 py-1 rounded-md text-xs font-extrabold uppercase tracking-widest shadow-[0_0_15px_rgba(250,204,21,0.6)]">
                Trending #1
            </span>
        </div>

        <h1 class="text-4xl font-extrabold leading-[1.1] mb-2 text-white drop-shadow-lg">
            My $250 Mistake.
        </h1>

        <p class="text-lg text-gray-200 font-medium mb-6 leading-snug drop-shadow-md">
            Stop overpaying for designer scent. The dust on my dresser speaks for itself.
        </p>

        <a href="https://moziwash.com" class="group relative w-full bg-white text-black font-bold text-lg py-4 rounded-2xl text-center shadow-[0_0_30px_rgba(255,255,255,0.4)] transition-all hover:scale-[1.02] active:scale-[0.95]">
            <span class="relative z-10 flex items-center justify-center space-x-2">
                <span>Get The Scent</span>
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"></path></svg>
            </span>
        </a>

        <div class="mt-4 text-center">
            <p class="text-xs text-gray-400 font-mono uppercase tracking-widest">
                High Demand • Low Stock
            </p>
        </div>

    </div>

</body>
</html>
