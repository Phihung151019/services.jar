.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$1:Landroid/view/InputChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/view/InputChannel;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/view/InputChannel;

    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->lambda$createSpyWindowGestureMonitor$0(Landroid/view/InputChannel;)V

    return-void
.end method
