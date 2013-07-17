.class public Lcom/htc/calendar/AvatarCacheHelper;
.super Ljava/lang/Object;
.source "AvatarCacheHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AvatarCacheHelper"

.field private static cacheIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static contactUriCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/htc/calendar/AvatarCacheHelper;

.field private static sResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/htc/calendar/AvatarCacheHelper;->sInstance:Lcom/htc/calendar/AvatarCacheHelper;

    .line 16
    sput-object v0, Lcom/htc/calendar/AvatarCacheHelper;->sResources:Landroid/content/res/Resources;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/AvatarCacheHelper;->cacheIcon:Ljava/util/HashMap;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/AvatarCacheHelper;->contactUriCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/calendar/AvatarCacheHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/htc/calendar/AvatarCacheHelper;->sInstance:Lcom/htc/calendar/AvatarCacheHelper;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/htc/calendar/AvatarCacheHelper;

    invoke-direct {v0}, Lcom/htc/calendar/AvatarCacheHelper;-><init>()V

    sput-object v0, Lcom/htc/calendar/AvatarCacheHelper;->sInstance:Lcom/htc/calendar/AvatarCacheHelper;

    .line 30
    :cond_0
    sget-object v0, Lcom/htc/calendar/AvatarCacheHelper;->sResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/AvatarCacheHelper;->sResources:Landroid/content/res/Resources;

    .line 33
    :cond_1
    sget-object v0, Lcom/htc/calendar/AvatarCacheHelper;->sInstance:Lcom/htc/calendar/AvatarCacheHelper;

    return-object v0
.end method


# virtual methods
.method public getAvatarIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "sourceId"

    .prologue
    .line 40
    sget-object v0, Lcom/htc/calendar/AvatarCacheHelper;->cacheIcon:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getAvatarUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "sourceId"

    .prologue
    .line 60
    sget-object v0, Lcom/htc/calendar/AvatarCacheHelper;->contactUriCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public isAvatarIconExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "sourceId"

    .prologue
    .line 53
    sget-object v0, Lcom/htc/calendar/AvatarCacheHelper;->cacheIcon:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAvatarUriExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "sourceId"

    .prologue
    .line 72
    sget-object v0, Lcom/htc/calendar/AvatarCacheHelper;->contactUriCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAvatarIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "sourceId"
    .parameter "image"

    .prologue
    .line 44
    const-string v1, "AvatarCacheHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAvatarIcon sourceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/calendar/AvatarCacheHelper;->isAvatarIconExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const-string v1, "AvatarCacheHelper"

    const-string v2, "setAvatarIcon not exist, then insert it into cache!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/htc/calendar/AvatarCacheHelper;->sResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 48
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Lcom/htc/calendar/AvatarCacheHelper;->cacheIcon:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public setAvatarUri(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "sourceId"
    .parameter "uri"

    .prologue
    .line 64
    const-string v0, "AvatarCacheHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvatarUri sourceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0, p1}, Lcom/htc/calendar/AvatarCacheHelper;->isAvatarUriExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "AvatarCacheHelper"

    const-string v1, "setAvatarUri not exist, then insert it into cache!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v0, Lcom/htc/calendar/AvatarCacheHelper;->contactUriCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    return-void
.end method
