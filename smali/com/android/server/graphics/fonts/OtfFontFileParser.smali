.class public final Lcom/android/server/graphics/fonts/OtfFontFileParser;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static buildFontFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/fonts/FontFileUtil;->getPostScriptName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Landroid/graphics/fonts/FontFileUtil;->isPostScriptType1Font(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/fonts/FontFileUtil;->isCollectionFont(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-ne v0, v3, :cond_1

    const-string v0, ".otc"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const-string v0, ".ttc"

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    const-string v0, ".otf"

    goto :goto_0

    :cond_3
    const-string v0, ".ttf"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_4
    :goto_1
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    const/4 p0, 0x0

    return-object p0

    :goto_2
    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    throw v0
.end method

.method public static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 8

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static tryToCreateTypeface(Ljava/io/File;)V
    .locals 5

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p0

    :try_start_0
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    new-instance v1, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v1, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v1}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    new-instance v1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v1, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string/jumbo v0, "abcXYZ@- \ud83e\uded6\ud83c\uddfa\ud83c\uddf8\ud83d\udc8f\ud83c\udffb\ud83d\udc68\ud83c\udffc\u200d\u2764\ufe0f\u200d\ud83d\udc8b\u200d\ud83d\udc68\ud83c\udfff"

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x0

    const/16 v4, 0x22

    invoke-static {v0, v3, v4, v1, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/android/server/graphics/fonts/OtfFontFileParser;->unmap(Ljava/nio/ByteBuffer;)V

    throw v0
.end method

.method public static unmap(Ljava/nio/ByteBuffer;)V
    .locals 1

    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method
