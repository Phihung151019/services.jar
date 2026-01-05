.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$14;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$activityManager:Landroid/app/ActivityManager;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/app/ActivityManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$activityManager:Landroid/app/ActivityManager;

    iput-object p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$activityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    :cond_0
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$14;->val$userId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(IILjava/lang/String;)Z

    return-void
.end method
