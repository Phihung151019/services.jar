.class public final Lcom/android/server/am/ActivityManagerService$17;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$app:Landroid/os/IBinder;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

.field public final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingUid:I

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingPid:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$17;->val$app:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$tag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingUid:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$17;->val$callingPid:I

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$17;->val$app:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$17;->val$tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$17;->val$crashInfo:Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->handleApplicationWtfInner(IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/android/server/am/ProcessRecord;

    return-void
.end method
