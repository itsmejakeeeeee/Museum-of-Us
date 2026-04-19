-- Supabase Schema for Museum of Us - The Carmen Collection
-- Run this in your Supabase SQL Editor to set up the database

-- Create the gallery table
CREATE TABLE IF NOT EXISTS gallery (
    id BIGINT PRIMARY KEY,
    title TEXT NOT NULL,
    date TEXT,
    image_url TEXT NOT NULL,
    drive_id TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable Row Level Security
ALTER TABLE gallery ENABLE ROW LEVEL SECURITY;

-- Allow public read access
CREATE POLICY "Allow public read access" ON gallery
    FOR SELECT USING (true);

-- Allow public insert
CREATE POLICY "Allow public insert" ON gallery
    FOR INSERT WITH CHECK (true);

-- Allow public delete
CREATE POLICY "Allow public delete" ON gallery
    FOR DELETE USING (true);

-- Allow public update
CREATE POLICY "Allow public update" ON gallery
    FOR UPDATE USING (true);

-- Create index for faster queries
CREATE INDEX IF NOT EXISTS gallery_created_at_idx ON gallery (created_at DESC);
CREATE INDEX IF NOT EXISTS gallery_id_idx ON gallery (id DESC);

-- Optional: Create storage bucket for images (if you want to store images in Supabase instead of Google Drive)
-- INSERT INTO storage.buckets (id, name, public) VALUES ('gallery-images', 'gallery-images', true);

-- Optional: Storage policies (if using Supabase Storage)
-- CREATE POLICY "Allow public read" ON storage.objects FOR SELECT USING (bucket_id = 'gallery-images');
-- CREATE POLICY "Allow public upload" ON storage.objects FOR INSERT WITH CHECK (bucket_id = 'gallery-images');
-- CREATE POLICY "Allow public delete" ON storage.objects FOR DELETE USING (bucket_id = 'gallery-images');
