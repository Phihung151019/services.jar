.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerServiceExt;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;ZLjava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$1:Z

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$3:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$1:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda11;->f$3:Lcom/android/server/am/ProcessRecord;

    check-cast p1, Landroid/os/RemoteCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p1, v1, v2, p0}, Lcom/android/server/am/ActivityManagerServiceExt;->updateNeverKill(Landroid/os/RemoteCallback;ZLjava/lang/String;I)V

    return-void
.end method
