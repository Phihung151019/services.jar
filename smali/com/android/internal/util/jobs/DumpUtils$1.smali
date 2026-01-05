.class public final Lcom/android/internal/util/jobs/DumpUtils$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$dump:Lcom/android/internal/util/jobs/DumpUtils$Dump;

.field public final synthetic val$prefix:Ljava/lang/String;

.field public final synthetic val$sw:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>(Ljava/io/StringWriter;Lcom/android/internal/util/jobs/DumpUtils$Dump;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$sw:Ljava/io/StringWriter;

    iput-object p2, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$dump:Lcom/android/internal/util/jobs/DumpUtils$Dump;

    iput-object p3, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter;

    iget-object v1, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$sw:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$dump:Lcom/android/internal/util/jobs/DumpUtils$Dump;

    iget-object p0, p0, Lcom/android/internal/util/jobs/DumpUtils$1;->val$prefix:Ljava/lang/String;

    invoke-interface {v1, v0, p0}, Lcom/android/internal/util/jobs/DumpUtils$Dump;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/FastPrintWriter;->close()V

    return-void
.end method
