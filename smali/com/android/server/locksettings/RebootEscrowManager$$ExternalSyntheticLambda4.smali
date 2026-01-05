.class public final synthetic Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager;Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$1:Landroid/os/Handler;

    iput p3, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$2:I

    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$1:Landroid/os/Handler;

    iget v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$2:I

    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;->f$4:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method
