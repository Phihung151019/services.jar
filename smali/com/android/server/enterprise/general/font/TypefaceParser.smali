.class public final Lcom/android/server/enterprise/general/font/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public in_droidname:Z

.field public in_filename:Z

.field public in_monospace:Z

.field public in_sans:Z

.field public in_serif:Z

.field public mFont:Lcom/android/server/enterprise/general/font/Typeface;

.field public mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;


# virtual methods
.method public final characters([CII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/TypefaceFile;->fileName:Ljava/lang/String;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/TypefaceFile;->droidName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final endDocument()V
    .locals 0

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string/jumbo p1, "font"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "sans"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_sans:Z

    return-void

    :cond_1
    const-string/jumbo p1, "serif"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_serif:Z

    return-void

    :cond_2
    const-string/jumbo p1, "monospace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_monospace:Z

    return-void

    :cond_3
    const-string/jumbo p1, "file"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    if-eqz p1, :cond_8

    iget-boolean p2, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_sans:Z

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget-boolean p2, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_serif:Z

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mSerifFonts:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    iget-boolean p2, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_monospace:Z

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mMonospaceFonts:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    const-string/jumbo p1, "filename"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_filename:Z

    return-void

    :cond_7
    const-string/jumbo p1, "droidname"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_droidname:Z

    :cond_8
    :goto_0
    return-void
.end method

.method public final startDocument()V
    .locals 1

    new-instance v0, Lcom/android/server/enterprise/general/font/Typeface;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/font/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string/jumbo p1, "font"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "displayname"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    iput-object p1, p0, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo p1, "sans"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_sans:Z

    return-void

    :cond_1
    const-string/jumbo p1, "serif"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_serif:Z

    return-void

    :cond_2
    const-string/jumbo p1, "monospace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_monospace:Z

    return-void

    :cond_3
    const-string/jumbo p1, "file"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/server/enterprise/general/font/TypefaceFile;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/enterprise/general/font/TypefaceFile;->fileName:Ljava/lang/String;

    iput-object p2, p1, Lcom/android/server/enterprise/general/font/TypefaceFile;->droidName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    return-void

    :cond_4
    const-string/jumbo p1, "filename"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_filename:Z

    return-void

    :cond_5
    const-string/jumbo p1, "droidname"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean p3, p0, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_droidname:Z

    :cond_6
    return-void
.end method
