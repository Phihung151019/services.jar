.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/input/InputManagerService;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/input/InputManagerService;

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->lambda$controlSpenWithToken$1()V

    return-void
.end method
