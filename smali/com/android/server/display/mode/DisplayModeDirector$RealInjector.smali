.class Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/mode/DisplayModeDirector$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getDisplayManager()Landroid/hardware/display/DisplayManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public final getDisplays()[Landroid/view/Display;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FLIP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.hardware.display.category.ALL_INCLUDING_BUILT_IN"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    :goto_0
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method
