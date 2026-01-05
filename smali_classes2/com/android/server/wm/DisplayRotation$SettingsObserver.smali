.class public final Lcom/android/server/wm/DisplayRotation$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {p1}, Lcom/android/server/wm/DisplayRotation;->-$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    :cond_0
    return-void
.end method
