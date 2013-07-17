.class public Lcom/htc/calendar/ManageCalendarsAdapter;
.super Landroid/widget/CursorAdapter;
.source "ManageCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/ManageCalendarsAdapter$UpdateAllCalendarThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOTIFY_CAL_WIDGET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ManageCalendars"

.field private static final UPDATE_ALL_CALENDAR:I = 0x1

.field private static mCheckedNum:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mParentActivity:Lcom/htc/calendar/ManageCalendarsActivity;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSelected:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/calendar/ManageCalendarsActivity;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "activity"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 42
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/htc/calendar/ManageCalendarsAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/ManageCalendarsAdapter$1;-><init>(Lcom/htc/calendar/ManageCalendarsAdapter;)V

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mHandler:Landroid/os/Handler;

    .line 133
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 135
    iput-object p1, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mContext:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mParentActivity:Lcom/htc/calendar/ManageCalendarsActivity;

    .line 137
    invoke-virtual {p0, p2}, Lcom/htc/calendar/ManageCalendarsAdapter;->initListData(Landroid/database/Cursor;)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/ManageCalendarsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/calendar/ManageCalendarsAdapter;->msg_send_to_calendar_widget()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/calendar/ManageCalendarsAdapter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/calendar/ManageCalendarsAdapter;->msg_update_all_calendars(Z)V

    return-void
.end method

.method private msg_send_to_calendar_widget()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.calendars.picker.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method private msg_update_all_calendars(Z)V
    .locals 11
    .parameter "closeDialog"

    .prologue
    .line 70
    iget-object v8, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 71
    .local v4, iter:Ljava/util/Iterator;
    const-string v8, "ManageCalendars"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "all calendars, mSelected size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v6, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 76
    .local v3, id:Ljava/lang/Long;
    iget-object v8, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 77
    .local v1, checked:Z
    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 78
    .local v7, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 79
    iget-object v9, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    const-string v10, "visible"

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 82
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 86
    .end local v1           #checked:Z
    .end local v3           #id:Ljava/lang/Long;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "com.android.calendar"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :goto_2
    iget-object v8, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 100
    .local v5, msgNotifyCalWidget:Landroid/os/Message;
    iget-object v8, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    if-eqz p1, :cond_2

    .line 102
    iget-object v8, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mParentActivity:Lcom/htc/calendar/ManageCalendarsActivity;

    invoke-virtual {v8}, Lcom/htc/calendar/ManageCalendarsActivity;->dismissProgressDialog()V

    .line 105
    :cond_2
    return-void

    .line 93
    .end local v5           #msgNotifyCalWidget:Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 94
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "ManageCalendars"

    const-string v9, "Ignoring unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 95
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 96
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v8, "ManageCalendars"

    const-string v9, "Ignoring unexpected exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 168
    const-string v11, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 169
    .local v7, idColumn:I
    const-string v11, "calendar_displayName"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 170
    .local v9, nameColumn:I
    const-string v11, "visible"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 171
    .local v10, selectedColumn:I
    const-string v11, "calendar_color"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 173
    .local v3, colorColumn:I
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 174
    .local v2, color:I
    invoke-static {v2}, Lcom/htc/calendar/Utils;->getColorChip(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 175
    .local v4, d:Landroid/graphics/drawable/Drawable;
    const v11, 0x202001a

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    const v11, 0x2020010

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 181
    .local v5, id:J
    iget-object v11, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 182
    iget-object v11, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 193
    .local v1, checked:Z
    :goto_0
    const v11, 0x202001f

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 194
    .local v8, iv:Landroid/widget/CheckBox;
    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 196
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    return-void

    .line 184
    .end local v1           #checked:Z
    .end local v8           #iv:Landroid/widget/CheckBox;
    :cond_0
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v1, 0x1

    .line 185
    .restart local v1       #checked:Z
    :goto_1
    if-eqz v1, :cond_2

    .line 186
    iget-object v11, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget v11, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    goto :goto_0

    .line 184
    .end local v1           #checked:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 189
    .restart local v1       #checked:Z
    :cond_2
    iget-object v11, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkAllCalendars(Z)V
    .locals 4
    .parameter "checkAll"

    .prologue
    .line 220
    iget-object v2, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 221
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 223
    .local v0, id:Ljava/lang/Long;
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 225
    .end local v0           #id:Ljava/lang/Long;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsAdapter;->getCount()I

    move-result v2

    :goto_2
    sput v2, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    .line 226
    return-void

    .line 225
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public initListData(Landroid/database/Cursor;)V
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v5, 0x1

    .line 141
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 142
    .local v3, idColumn:I
    const-string v6, "visible"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 147
    .local v4, selectedColumn:I
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 149
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 151
    .local v1, id:J
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v0, v5

    .line 152
    .local v0, checked:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 153
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget v6, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    goto :goto_0

    .line 151
    .end local v0           #checked:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 156
    .restart local v0       #checked:Z
    :cond_1
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 159
    .end local v0           #checked:Z
    .end local v1           #id:J
    :cond_2
    return-void
.end method

.method public isAllCalendarsChecked()Z
    .locals 2

    .prologue
    .line 236
    sget v0, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x2090058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public saveAllCalendars(Z)V
    .locals 5
    .parameter "bNeedCloseProgressDialog"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    iget-object v4, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 232
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 233
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 231
    goto :goto_0
.end method

.method public setIntoCalendarDB(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 204
    .local v2, id:J
    iget-object v4, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 205
    .local v0, checked:Z
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 207
    :goto_0
    if-eqz v0, :cond_1

    .line 208
    iget-object v4, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget v4, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    .line 214
    :goto_1
    const v4, 0x202001f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 215
    .local v1, chkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    return v0

    .line 205
    .end local v1           #chkBox:Landroid/widget/CheckBox;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_1
    iget-object v4, p0, Lcom/htc/calendar/ManageCalendarsAdapter;->mSelected:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget v4, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/htc/calendar/ManageCalendarsAdapter;->mCheckedNum:I

    goto :goto_1
.end method
