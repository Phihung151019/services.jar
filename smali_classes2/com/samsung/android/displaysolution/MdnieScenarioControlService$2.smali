.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    return-void
.end method


# virtual methods
.method public final onDesktopDockConnectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onDesktopModeChanged(Z)V
    .locals 1

    const-string/jumbo v0, "MdnieScenarioControlService"

    if-eqz p1, :cond_0

    const-string p1, "Dex Mode Connected"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    return-void

    :cond_0
    const-string p1, "Dex Mode Disconnected"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    return-void
.end method
