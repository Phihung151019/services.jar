.class public final synthetic Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/BrailleDisplayConnection;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/BrailleDisplayConnection;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection;

    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection;

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticLambda1;->f$1:[B

    sget-object v1, Lcom/android/server/accessibility/BrailleDisplayConnection;->sConnectedNodes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/server/accessibility/BrailleDisplayConnection;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "BrailleDisplayConnection"

    const-string v2, "Error writing to connected Braille display"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/accessibility/BrailleDisplayConnection;->disconnect()V

    return-void
.end method
