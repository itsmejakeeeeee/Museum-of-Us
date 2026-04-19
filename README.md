# Museum of Us - The Carmen Collection

A beautiful photo gallery application with **cross-device synchronization**.

## Features

- **Cross-Device Sync**: Your photos sync automatically across all devices
- **Real-Time Updates**: See changes from other devices instantly
- **Offline Support**: Works offline and syncs when back online
- **Google Drive Backup**: Photos are also backed up to Google Drive
- **Beautiful Museum Aesthetic**: Preserves the original design

## Setup Instructions

### 1. Supabase Database Setup

1. Go to [Supabase](https://supabase.com) and create a project
2. Go to **SQL Editor** in your Supabase dashboard
3. Copy and paste the contents of `supabase_schema.sql`
4. Click **Run** to execute the SQL

### 2. Environment Variables (Already Configured)

The following variables are already set:
- `SUPABASE_URL`: Your Supabase project URL
- `SUPABASE_ANON_KEY`: Your Supabase anonymous key

### 3. Deploy to Vercel

Simply deploy this single HTML file to Vercel:
```bash
npx vercel --prod
```

Or drag and drop the `index.html` file to Vercel dashboard.

## How Sync Works

1. **When uploading**: Photo is saved to Google Drive + localStorage + Supabase
2. **When loading**: App fetches data from Supabase (cloud) and merges with localStorage
3. **Real-time**: App subscribes to Supabase changes and updates instantly
4. **Offline**: Works offline using localStorage, syncs when back online

## File Structure

```
├── index.html           # Main application (single file)
├── supabase_schema.sql  # Database schema to run in Supabase
└── README.md           # This file
```

## Support

For issues or questions, check the console logs in your browser for debugging information.
