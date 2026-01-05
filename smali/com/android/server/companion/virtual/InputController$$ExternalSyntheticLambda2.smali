.class public final synthetic Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final isValidThread()Z
    .locals 1

    sget-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;->f$0:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
