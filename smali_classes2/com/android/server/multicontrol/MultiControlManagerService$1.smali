.class public final Lcom/android/server/multicontrol/MultiControlManagerService$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-virtual {p1}, Lcom/android/server/multicontrol/MultiControlManagerService;->initializeStates()V

    iget-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    iget-object p1, p1, Lcom/android/server/multicontrol/MultiControlManagerService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$1;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mUserSetupCompleteObserver:Lcom/android/server/multicontrol/MultiControlManagerService$1;

    return-void
.end method
