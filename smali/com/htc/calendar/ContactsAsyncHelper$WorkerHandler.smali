.class Lcom/htc/calendar/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/htc/calendar/ContactsAsyncHelper;

    .line 77
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;

    .line 84
    .local v0, args:Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;
    iget v10, p1, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_0

    .line 153
    :goto_0
    iget-object v10, p0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/htc/calendar/ContactsAsyncHelper;

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Lcom/htc/calendar/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 154
    .local v7, reply:Landroid/os/Message;
    iget v10, p1, Landroid/os/Message;->arg1:I

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 155
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 157
    return-void

    .line 86
    .end local v7           #reply:Landroid/os/Message;
    :pswitch_0
    const-wide/16 v2, -0x1

    .line 88
    .local v2, contactId:J
    const/4 v9, 0x0

    .line 89
    .local v9, thumbnailIcon:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 90
    .local v6, loaded:Z
    iget-object v8, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->source_id:Ljava/lang/String;

    .line 92
    .local v8, sourceId:Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 95
    .local v4, contactUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 96
    .local v5, inCached:Z
    :try_start_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 98
    iget-object v10, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/calendar/AvatarCacheHelper;->getInstance(Landroid/content/Context;)Lcom/htc/calendar/AvatarCacheHelper;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/calendar/AvatarCacheHelper;->isAvatarIconExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 99
    iget-object v10, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/calendar/AvatarCacheHelper;->getInstance(Landroid/content/Context;)Lcom/htc/calendar/AvatarCacheHelper;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/calendar/AvatarCacheHelper;->getAvatarUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 101
    const/4 v5, 0x1

    .line 109
    :goto_1
    iput-object v4, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 112
    :cond_0
    iget-object v10, p0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerHandler;->this$0:Lcom/htc/calendar/ContactsAsyncHelper;

    iget-object v11, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    #calls: Lcom/htc/calendar/ContactsAsyncHelper;->validateUri(Landroid/net/Uri;)Z
    invoke-static {v10, v11}, Lcom/htc/calendar/ContactsAsyncHelper;->access$000(Lcom/htc/calendar/ContactsAsyncHelper;Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 113
    iget-object v10, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 115
    if-eqz v5, :cond_4

    .line 116
    iget-object v10, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/calendar/AvatarCacheHelper;->getInstance(Landroid/content/Context;)Lcom/htc/calendar/AvatarCacheHelper;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/htc/calendar/AvatarCacheHelper;->getAvatarIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 117
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 128
    .end local v1           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_2
    const/4 v6, 0x1

    .line 136
    :cond_2
    :goto_3
    if-eqz v6, :cond_6

    .line 137
    if-nez v9, :cond_5

    .line 138
    iput-object v12, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .line 139
    const-string v10, "ContactsAsyncHelper"

    const-string v11, "loadContactThumbnail is null..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_3
    :try_start_1
    iget-object v10, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-static {v10, v8}, Lcom/htc/util/calendar/FacebookUtils;->getRawContactUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 104
    iget-object v10, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/calendar/AvatarCacheHelper;->getInstance(Landroid/content/Context;)Lcom/htc/calendar/AvatarCacheHelper;

    move-result-object v10

    invoke-virtual {v10, v8, v4}, Lcom/htc/calendar/AvatarCacheHelper;->setAvatarUri(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 130
    :catch_0
    move-exception v10

    goto :goto_3

    .line 119
    :cond_4
    const/4 v10, 0x0

    iget-object v11, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v2, v3, v10, v11}, Lcom/htc/wrap/android/provider/HtcWrapHtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 122
    if-eqz v9, :cond_1

    .line 124
    iget-object v10, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/htc/calendar/AvatarCacheHelper;->getInstance(Landroid/content/Context;)Lcom/htc/calendar/AvatarCacheHelper;

    move-result-object v10

    iget-object v11, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->source_id:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Lcom/htc/calendar/AvatarCacheHelper;->setAvatarIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 141
    :cond_5
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v10, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 144
    :cond_6
    iput-object v12, v0, Lcom/htc/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .line 145
    const-string v10, "ContactsAsyncHelper"

    const-string v11, "loadContactThumbnail fail..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
