.class public final synthetic Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/jobs/DumpUtils$KeyDumper;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dump(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$xV6YgEaWJX4rlq6RkXJi5BssYRs(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    return-void
.end method
