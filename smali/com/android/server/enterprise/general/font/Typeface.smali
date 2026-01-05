.class public final Lcom/android/server/enterprise/general/font/Typeface;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mFontPackageName:Ljava/lang/String;

.field public final mMonospaceFonts:Ljava/util/List;

.field public mName:Ljava/lang/String;

.field public final mSansFonts:Ljava/util/List;

.field public final mSerifFonts:Ljava/util/List;

.field public mTypefaceFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mFontPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mTypefaceFilename:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mSansFonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mSerifFonts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/font/Typeface;->mMonospaceFonts:Ljava/util/List;

    return-void
.end method
