.class public final synthetic Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;


# direct methods
.method public synthetic constructor <init>(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService$WallpaperEffectsGenerationManagerStub$$ExternalSyntheticLambda0;->f$0:Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;

    check-cast p1, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;

    invoke-virtual {p1, p0}, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;->invokeCinematicListenerAndCleanup(Landroid/app/wallpapereffectsgeneration/CinematicEffectResponse;)V

    return-void
.end method
