.class public final Lcom/android/server/am/BroadcastSkipPolicy$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastSkipPolicy;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$receivingUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastSkipPolicy;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->this$0:Lcom/android/server/am/BroadcastSkipPolicy;

    iput-object p2, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->val$receivingUserId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->this$0:Lcom/android/server/am/BroadcastSkipPolicy;

    iget-object v0, v0, Lcom/android/server/am/BroadcastSkipPolicy;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->val$receivingUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
