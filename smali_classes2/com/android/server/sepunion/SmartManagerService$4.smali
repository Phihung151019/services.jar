.class public final Lcom/android/server/sepunion/SmartManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SmartManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SmartManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SmartManagerService$4;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/SmartManagerService$4;->this$0:Lcom/android/server/sepunion/SmartManagerService;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/server/sepunion/SmartManagerService;->-$$Nest$monPermissionChanged(Lcom/android/server/sepunion/SmartManagerService;I)V

    return-void
.end method
