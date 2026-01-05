.class public final Lcom/android/server/graphics/fonts/UpdatableFontDir;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mConfigFile:Landroid/util/AtomicFile;

.field public final mConfigSupplier:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

.field public mConfigVersion:I

.field public final mCurrentTimeSupplier:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;

.field public final mFilesDir:Ljava/io/File;

.field public final mFontFileInfoMap:Landroid/util/ArrayMap;

.field public final mFsverityUtil:Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

.field public mLastModifiedMillis:J

.field public final mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/server/graphics/fonts/OtfFontFileParser;Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;Ljava/io/File;)V
    .locals 3

    new-instance v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;

    iput-object p3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, p4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;

    iput-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    return-void
.end method

.method public static deleteAllFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    const-string v0, "Failed to delete "

    const-string/jumbo v1, "UpdatableFontDir"

    :try_start_0
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$FontFamily;

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$Font;

    invoke-virtual {v5}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_3
    invoke-virtual {p1}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$NamedFamilyList;

    move v4, v1

    :goto_4
    invoke-virtual {v3}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v3}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$FontFamily;

    move v6, v1

    :goto_5
    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Font;

    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v0, v7

    goto :goto_6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-object v0
.end method


# virtual methods
.method public final addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mPsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mRevision:J

    if-nez v0, :cond_4

    invoke-static {v1, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;

    move-result-object p2

    const-wide/16 v6, -0x1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getOriginalFile()Ljava/io/File;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-nez p2, :cond_3

    const-string/jumbo p2, "UpdatableFontDir"

    const-string v6, "Invalid preinstalled font file"

    invoke-static {p2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v6, v8

    :goto_1
    cmp-long p2, v6, v4

    if-gtz p2, :cond_5

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_4
    iget-wide v6, v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mRevision:J

    cmp-long p2, v6, v4

    if-gtz p2, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v2, :cond_7

    if-eqz p3, :cond_6

    if-eqz v0, :cond_6

    iget-object p2, v0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_6
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_7
    if-eqz p3, :cond_8

    iget-object p0, p1, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_8
    return v2
.end method

.method public final getFontRevision(Ljava/io/File;)J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/fonts/FontFileUtil;->getRevision(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-wide v0

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "UpdatableFontDir"

    const-string v0, "Failed to read font file"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getPostScriptMap()Ljava/util/Map;
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    iget-object v3, v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mPsName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getSystemFontConfig()Landroid/text/FontConfig;
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getPostScriptMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/FontConfig;

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {p0, v3}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/text/FontConfig;

    invoke-virtual {v0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/FontConfig;->getLocaleFallbackCustomizations()Ljava/util/List;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget v9, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    invoke-direct/range {v2 .. v9}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    return-object v2
.end method

.method public final installFontFile(Ljava/io/FileDescriptor;[B)V
    .locals 8

    const-string v0, "Failed to read PostScript name from font file"

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;

    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    iget-object v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    const/16 v5, 0x10

    new-array v5, v5, [B

    :cond_0
    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "~~"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xa

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1c9

    invoke-static {v3, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "font.ttf"

    invoke-direct {v3, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 p1, -0x3

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->buildFontFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_3

    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "font.fsv_sig"

    invoke-direct {v1, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x180

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-virtual {p0, v0, p2}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object v0, p2, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->tryToCreateTypeface(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getSystemFontConfig()Landroid/text/FontConfig;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Downgrading font file is forbidden."

    const/4 p2, -0x5

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    new-instance p2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v0, "Failed to create Typeface from file"

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to change the signature file mode to 600"

    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception p1

    :try_start_12
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :goto_1
    :try_start_13
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to write font signature file to storage."

    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to change font file mode to 644"

    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Failed to move verified font file."

    invoke-direct {p0, v4, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const/4 p1, -0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    new-instance p2, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p0

    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to setup fs-verity."

    const/4 v0, -0x2

    invoke-direct {p1, v0, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :catch_5
    move-exception p0

    goto :goto_3

    :catchall_4
    move-exception p0

    :try_start_14
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    :try_start_15
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :goto_3
    :try_start_16
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to write font file to storage."

    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :goto_4
    invoke-static {v7}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    throw p0

    :catch_6
    move-exception p0

    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Failed to change mode to 711"

    invoke-direct {p1, v4, p2, p0}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p1, "Failed to create font directory."

    invoke-direct {p0, v4, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final loadFontFileMap()V
    .locals 17

    move-object/from16 v1, p0

    const-string/jumbo v2, "UpdatableFontDir"

    const-string v0, "Could not read: "

    iget-object v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    const/4 v5, 0x1

    iput v5, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v6

    iget-wide v7, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    iput-wide v7, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget-object v7, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-wide v3, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    :goto_1
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    :try_start_1
    array-length v0, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v8

    :goto_2
    iget-object v11, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigSupplier:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;

    if-ge v10, v0, :cond_8

    :try_start_2
    aget-object v12, v7, v10

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "~~"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected dir found: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v13, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting obsolete dir: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move/from16 v16, v8

    goto :goto_4

    :cond_2
    new-instance v13, Ljava/io/File;

    const-string/jumbo v14, "font.fsv_sig"

    invoke-direct {v13, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    const-string/jumbo v0, "The signature file is missing."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    new-array v15, v8, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v14

    invoke-static {v14}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v14
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_7

    move/from16 v16, v8

    array-length v8, v15

    const/4 v3, 0x2

    if-eq v8, v3, :cond_4

    goto :goto_5

    :cond_4
    aget-object v3, v15, v16

    invoke-virtual {v3, v13}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object v3, v15, v5

    goto :goto_3

    :cond_5
    aget-object v3, v15, v16

    :goto_3
    invoke-virtual {v1, v3, v14}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    move-result-object v3

    if-nez v9, :cond_6

    sget-object v4, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v11, v4}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/text/FontConfig;

    :cond_6
    invoke-virtual {v1, v3, v9, v5}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->addFileToMapIfSameOrNewer(Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;Landroid/text/FontConfig;Z)Z

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v16

    const-wide/16 v3, 0x0

    goto/16 :goto_2

    :cond_7
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected files in dir: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    goto/16 :goto_1

    :catch_0
    :try_start_5
    const-string v0, "Failed to read signature file."

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    iget-object v0, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    goto/16 :goto_c

    :cond_8
    move/from16 v16, v8

    move/from16 v0, v16

    :goto_8
    :try_start_6
    iget-object v3, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    iget-object v3, v6, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    move/from16 v4, v16

    :goto_9
    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/FontUpdateRequest$Font;

    iget-object v7, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    if-nez v9, :cond_a

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v11, v7}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/text/FontConfig;

    :cond_a
    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontByPostScriptName(Ljava/lang/String;Landroid/text/FontConfig;)Landroid/text/FontConfig$Font;

    move-result-object v7

    if-eqz v7, :cond_b

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown font that has PostScript name "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is requested in FontFamily "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :goto_b
    :try_start_7
    const-string v3, "Failed to load font mappings."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_7

    :cond_d
    :goto_c
    return-void

    :catchall_1
    move-exception v0

    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iget-object v2, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFilesDir:Ljava/io/File;

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    iget-object v1, v1, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    throw v0
.end method

.method public final readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    .locals 2

    new-instance v0, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->loadFromXml(Ljava/io/InputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public final resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getFonts()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/fonts/FontUpdateRequest$Font;

    iget-object v5, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    if-nez v5, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to lookup font file that has "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "UpdatableFontDir"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v6, v4

    new-instance v4, Landroid/text/FontConfig$Font;

    move-object v7, v5

    iget-object v5, v7, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v8

    invoke-virtual {v6}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getIndex()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    iget-object v7, v7, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mPsName:Ljava/lang/String;

    invoke-direct/range {v4 .. v12}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/text/FontConfig$FontFamily;

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Landroid/os/LocaleList;I)V

    new-instance v0, Landroid/text/FontConfig$NamedFamilyList;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final update(Ljava/util/List;)V
    .locals 8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {p0}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->readPersistentConfig()Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, v1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {v5}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-wide v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest;

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getType()I

    move-result v6

    if-eqz v6, :cond_5

    if-eq v6, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest$Family;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/fonts/FontUpdateRequest;->getSignature()[B

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->installFontFile(Ljava/io/FileDescriptor;[B)V

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {p0, v1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->resolveFontFilesForNamedFamily(Landroid/graphics/fonts/FontUpdateRequest$Family;)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string/jumbo v1, "Required fonts are not available"

    const/16 v2, -0x9

    invoke-direct {p1, v2, v1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_8
    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mCurrentTimeSupplier:Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;

    invoke-virtual {p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    new-instance p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;

    invoke-direct {p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;-><init>()V

    iget-wide v6, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    iput-wide v6, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    iget-object v7, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    iget-object v6, v6, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v1, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->writeToXml(Ljava/io/OutputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V

    iget-object p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigVersion:I

    return-void

    :catch_0
    move-exception p1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_a
    new-instance v1, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string v2, "Failed to write config XML."

    const/4 v3, -0x6

    invoke-direct {v1, v3, v2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFontFileInfoMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iput-wide v4, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mLastModifiedMillis:J

    throw p1
.end method

.method public final validateFontFile(Ljava/io/File;[B)Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;
    .locals 9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mFsverityUtil:Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "FontManagerService"

    if-eqz v2, :cond_2

    iget-object v0, v1, Lcom/android/server/graphics/fonts/FontManagerService$FsverityUtilImpl;->mDerCertPaths:[Ljava/lang/String;

    array-length v1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v6, v0, v5

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p2, v2, v7}, Lcom/android/internal/security/VerityUtils;->verifyPkcs7DetachedSignature([B[BLjava/io/InputStream;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object p2, p0, Lcom/android/server/graphics/fonts/UpdatableFontDir;->mParser:Lcom/android/server/graphics/fonts/OtfFontFileParser;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-static {p2, v4}, Landroid/graphics/fonts/FontFileUtil;->getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {p2}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    invoke-virtual {p0, p1}, Lcom/android/server/graphics/fonts/UpdatableFontDir;->getFontRevision(Ljava/io/File;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/graphics/fonts/UpdatableFontDir$FontFileInfo;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Font validation failed. Could not read font revision: "

    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x3

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_6
    invoke-static {p2}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Font validation failed. Could not read PostScript name name: "

    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v8

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v7

    :try_start_9
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v8
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    const-string v7, "Failed to read certificate file: "

    invoke-static {v7, v6, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "Failed to get fs-verity digest for "

    invoke-static {p0, v0, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance p0, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;

    const-string p2, "Font validation failed. Fs-verity is not enabled: "

    invoke-static {p1, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x2

    invoke-direct {p0, p2, p1}, Lcom/android/server/graphics/fonts/FontManagerService$SystemFontException;-><init>(ILjava/lang/String;)V

    throw p0
.end method
