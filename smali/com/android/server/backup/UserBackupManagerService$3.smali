.class public final Lcom/android/server/backup/UserBackupManagerService$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$targets:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$3;->val$targets:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$3;->val$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$3;->val$targets:Ljava/util/HashSet;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method
