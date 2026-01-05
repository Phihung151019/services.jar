.class public final Lcom/android/server/input/KeyGestureController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyGestureController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$SettingsObserver;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$SettingsObserver;->this$0:Lcom/android/server/input/KeyGestureController;

    sget-boolean p1, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController;->initBehaviorsFromSettings()V

    return-void
.end method
