.class public final Lcom/android/server/enterprise/general/font/TypefaceFinder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mTypefaces:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    return-void
.end method

.method public static deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "xml"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xml/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/enterprise/general/font/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    :cond_0
    return-void
.end method

.method public final getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, ".ttf"

    const-string/jumbo v0, "default"

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v8, Lcom/android/server/enterprise/general/font/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v8}, Lcom/android/server/enterprise/general/font/TypefaceFinder$TypefaceSortByName;-><init>()V

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v9, 0x0

    :goto_0
    iget-object v0, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_8

    iget-object v0, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v10, v0, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_7

    iget-object v10, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v10, v10, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    const/16 v12, 0x2e

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    if-gez v12, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    :cond_1
    const/4 v13, 0x1

    add-int/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v11, v11, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    const/16 v12, 0x80

    :try_start_0
    invoke-virtual {v2, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v12, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fonts/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    iget-object v11, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v11, v11, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v12, "com.monotype.android.font.samsungone"

    if-eqz v11, :cond_4

    :try_start_1
    iget-object v11, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v11, v11, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    const-string/jumbo v14, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v11, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v11, v11, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    const-string/jumbo v14, "com.monotype.android.font.samsungoneuiregular"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :cond_3
    if-ge v15, v14, :cond_4

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v16

    check-cast v8, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v8, v8, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_4
    iget-object v8, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v8, v8, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    const-string/jumbo v11, "com.monotype.android.font.foundation"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v0}, Lcom/android/server/enterprise/general/font/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v13, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    invoke-virtual {v4, v13, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    invoke-virtual {v5, v13, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v8, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v8, v8, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v0}, Lcom/android/server/enterprise/general/font/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v13, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    invoke-virtual {v4, v13, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    invoke-virtual {v5, v13, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/font/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getSansEntries - Typeface.createFromAsset caused an exception for - fonts/"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "TypefaceFinder"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/general/font/TypefaceParser;

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_sans:Z

    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_serif:Z

    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_monospace:Z

    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_filename:Z

    iput-boolean v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->in_droidname:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    iput-object v2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/font/TypefaceFile;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    iget-object p2, v1, Lcom/android/server/enterprise/general/font/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/font/Typeface;

    const-string/jumbo v0, "com.monotype.android.font.samsungone"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "SamsungOneUI-Regular.xml"

    iput-object p1, p2, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p2, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    :goto_0
    iput-object p3, p2, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/general/font/TypefaceFinder;->mTypefaces:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
