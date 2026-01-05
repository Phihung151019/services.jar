.class public final Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;->this$1:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode$1;->this$1:Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;->updateActivated()V

    return-void
.end method
