.class public Lcom/htc/calendar/VCalendar;
.super Ljava/lang/Object;
.source "VCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    }
.end annotation


# static fields
.field public static final PACKAGE_NAME_BT:Ljava/lang/String; = "com.android.bluetooth"

.field public static final PACKAGE_NAME_MAIL:Ljava/lang/String; = "com.htc.android.mail"

.field public static final PACKAGE_NAME_MMS:Ljava/lang/String; = "com.android.mms"

.field private static final TAG:Ljava/lang/String; = "VCalendar"

.field private static mActivity:Landroid/app/Activity;

.field private static mItemClickDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private static mSelectedBegin:J

.field private static mSelectedEnd:J

.field private static mSelectedEventId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/htc/calendar/VCalendar$1;

    invoke-direct {v0}, Lcom/htc/calendar/VCalendar$1;-><init>()V

    sput-object v0, Lcom/htc/calendar/VCalendar;->mItemClickDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/calendar/VCalendar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 34
    sget-wide v0, Lcom/htc/calendar/VCalendar;->mSelectedEventId:J

    return-wide v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 34
    sget-wide v0, Lcom/htc/calendar/VCalendar;->mSelectedBegin:J

    return-wide v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 34
    sget-wide v0, Lcom/htc/calendar/VCalendar;->mSelectedEnd:J

    return-wide v0
.end method

.method private static getApplicationIcons(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, icons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 192
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 193
    .local v1, iconBT:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 194
    .local v3, iconMail:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 197
    .local v2, iconMMS:Landroid/graphics/drawable/Drawable;
    :try_start_0
    const-string v5, "com.android.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    :try_start_1
    const-string v5, "com.htc.android.mail"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 208
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_1
    :try_start_2
    const-string v5, "com.android.mms"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 216
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_2
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "VCalendar"

    const-string v6, "Can\'t get BlutTooth icon"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 205
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 206
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v5, "VCalendar"

    const-string v6, "Can\'t get Mail icon"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    throw v5

    .line 213
    :catch_2
    move-exception v0

    .line 214
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v5, "VCalendar"

    const-string v6, "Can\'t get MMS icon"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_1
    move-exception v5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    throw v5
.end method

.method public static launchShareVCalMenu(Landroid/app/Activity;JJJ)V
    .locals 11
    .parameter "activity"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 132
    if-nez p0, :cond_1

    .line 133
    const-string v7, "VCalendar"

    const-string v8, "launchShareVCalMenu activity is null, skip it"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-wide v7, Lcom/htc/calendar/VCalendar;->mSelectedEventId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 138
    const-string v7, "VCalendar"

    const-string v8, "launchShareVCalMenu mSelectedEventId < 0, skip it"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_2
    sput-object p0, Lcom/htc/calendar/VCalendar;->mActivity:Landroid/app/Activity;

    .line 142
    sput-wide p1, Lcom/htc/calendar/VCalendar;->mSelectedEventId:J

    .line 143
    sput-wide p3, Lcom/htc/calendar/VCalendar;->mSelectedBegin:J

    .line 144
    sput-wide p5, Lcom/htc/calendar/VCalendar;->mSelectedEnd:J

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 147
    .local v6, res:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 148
    .local v2, btMenus:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, aryMenuIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 151
    .local v0, adapter:Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    if-eqz v6, :cond_0

    .line 152
    const v7, 0x7f06001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {p0, v1}, Lcom/htc/calendar/VCalendar;->getApplicationIcons(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 155
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    .line 156
    .local v5, noMMS:[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v2, v8

    aput-object v8, v5, v7

    .line 157
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v2, v8

    aput-object v8, v5, v7

    .line 158
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    .line 159
    .local v3, noBT:[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v2, v8

    aput-object v8, v3, v7

    .line 160
    const/4 v7, 0x1

    const/4 v8, 0x2

    aget-object v8, v2, v8

    aput-object v8, v3, v7

    .line 161
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    .line 162
    .local v4, noBTAndNoMMS:[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v2, v8

    aput-object v8, v4, v7

    .line 164
    if-eqz v2, :cond_0

    .line 165
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->isMmsExist(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 166
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->isBTModuleExist(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    new-instance v0, Lcom/htc/calendar/VCalendar$VCalendarListAdapter;

    .end local v0           #adapter:Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    invoke-direct {v0, p0, v5, v1}, Lcom/htc/calendar/VCalendar$VCalendarListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 178
    .restart local v0       #adapter:Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    :goto_1
    new-instance v7, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v7, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/htc/calendar/VCalendar$2;

    invoke-direct {v8}, Lcom/htc/calendar/VCalendar$2;-><init>()V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08003e

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    sget-object v8, Lcom/htc/calendar/VCalendar;->mItemClickDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v7, v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 169
    :cond_3
    new-instance v0, Lcom/htc/calendar/VCalendar$VCalendarListAdapter;

    .end local v0           #adapter:Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    invoke-direct {v0, p0, v4, v1}, Lcom/htc/calendar/VCalendar$VCalendarListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)V

    .restart local v0       #adapter:Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    goto :goto_1

    .line 172
    :cond_4
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->isBTModuleExist(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 173
    new-instance v0, Lcom/htc/calendar/VCalendar$VCalendarListAdapter;

    .end local v0           #adapter:Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    invoke-direct {v0, p0, v2, v1}, Lcom/htc/calendar/VCalendar$VCalendarListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)V

    .restart local v0       #adapter:Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    goto :goto_1

    .line 175
    :cond_5
    new-instance v0, Lcom/htc/calendar/VCalendar$VCalendarListAdapter;

    .end local v0           #adapter:Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    invoke-direct {v0, p0, v3, v1}, Lcom/htc/calendar/VCalendar$VCalendarListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)V

    .restart local v0       #adapter:Lcom/htc/calendar/VCalendar$VCalendarListAdapter;
    goto :goto_1
.end method

.method public static sent_vCalendar_BT(Landroid/app/Activity;JJJ)V
    .locals 7
    .parameter "activity"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 48
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 50
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v3

    .line 52
    .local v3, vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    if-nez v3, :cond_0

    .line 53
    const-string v4, "VCalendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get vCalendar error!!, eventId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.bluetooth"

    const-string v5, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v4, "text/x-vcalendar"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v4, "name"

    invoke-virtual {v3}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v4, "result"

    invoke-virtual {v3}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 61
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VCalendar"

    const-string v5, "can\'t send vCalendar to BT"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sent_vCalendar_Mail(Landroid/app/Activity;JJJ)V
    .locals 6
    .parameter "activity"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v2

    .line 72
    .local v2, vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    if-nez v2, :cond_0

    .line 73
    const-string v3, "VCalendar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get vCalendar error!!, eventId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.android.mail"

    const-string v4, "com.htc.android.mail.ComposeActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v3, "text/x-vcalendar"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v3, "title"

    invoke-virtual {v2}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v3, "result"

    invoke-virtual {v2}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 83
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VCalendar"

    const-string v4, "can\'t send vCalendar to Mail"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static sent_vCalendar_Mms(Landroid/app/Activity;JJJ)V
    .locals 6
    .parameter "activity"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v2

    .line 93
    .local v2, vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    if-nez v2, :cond_0

    .line 94
    const-string v3, "VCalendar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get vCalendar error!!, eventId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 97
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.LAUNCH_MSG_COMPOSE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "text/x-vcalendar"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v3, "title"

    invoke-virtual {v2}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v3, "event_id"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    const-string v3, "vcalendar"

    invoke-virtual {v2}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v3, "result"

    invoke-virtual {v2}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 103
    const-string v3, "beginTime"

    invoke-virtual {v1, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 104
    const-string v3, "endTime"

    invoke-virtual {v1, v3, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 106
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VCalendar"

    const-string v4, "can\'t send vCalendar to Mms"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
