.class public final Lcom/android/server/am/ProcessStatsService$4;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field public final synthetic val$outData:[B


# direct methods
.method public constructor <init>([Landroid/os/ParcelFileDescriptor;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$4;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService$4;->val$outData:[B

    const-string/jumbo p1, "ProcessStats pipe output"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService$4;->val$fds:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService$4;->val$outData:[B

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo v0, "ProcessStatsService"

    const-string v1, "Failure writing pipe"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
