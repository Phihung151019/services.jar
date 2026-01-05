.class public final Lcom/android/server/am/ActivityManagerService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mdoDump(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public final dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 1

    if-eqz p4, :cond_0

    return-void

    :cond_0
    const-string/jumbo p3, "activities"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mdoDump(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    const-string/jumbo p3, "service"

    const-string/jumbo v0, "all-platform-critical"

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mdoDump(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method public final dumpNormal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 1

    const-string p3, "-a"

    const-string v0, "--normal-priority"

    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mdoDump(Lcom/android/server/am/ActivityManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method
