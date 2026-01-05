.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$finalTargetId:I

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;II)V
    .locals 0

    iput p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$finalTargetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$finalTargetId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p0, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->val$finalTargetId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p0, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
