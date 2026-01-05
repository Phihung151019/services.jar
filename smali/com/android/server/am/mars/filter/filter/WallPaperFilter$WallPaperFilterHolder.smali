.class public abstract Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackageList:Ljava/util/ArrayList;

    sput-object v0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    return-void
.end method
