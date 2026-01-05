.class public final Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;
.super Lcom/samsung/android/multicontrol/MultiControlManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/multicontrol/MultiControlManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/multicontrol/MultiControlManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MultiControlManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMultiControlEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService$LocalService;->this$0:Lcom/android/server/multicontrol/MultiControlManagerService;

    iget-object p0, p0, Lcom/android/server/multicontrol/MultiControlManagerService;->mInputFilter:Landroid/view/IInputFilter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
