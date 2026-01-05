.class public final Lcom/android/server/accessibility/BrailleDisplayConnection$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/accessibility/BrailleDisplayConnection$BrailleDisplayScanner;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$nativeInterface:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getDeviceBusType(Ljava/nio/file/Path;)I
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "BUS_BLUETOOTH"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0

    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V

    invoke-static {p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getDeviceReportDescriptor(Ljava/nio/file/Path;)[B
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "DESCRIPTOR"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V

    invoke-static {p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getHidrawNodePaths(Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v0, "hidraw*"

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    if-eqz p1, :cond_2

    :try_start_3
    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p0, 0x0

    :goto_4
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string/jumbo p1, "NAME"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V

    invoke-static {p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getUniqueId(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string/jumbo p1, "UNIQUE_ID"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->val$nativeInterface:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    new-instance v0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V

    invoke-static {p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$1;->readFromFileDescriptor(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
